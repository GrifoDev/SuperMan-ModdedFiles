.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;
.super Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
.source "CalendarEvent.java"


# static fields
.field public static final TABLE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "event_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "begin"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "end"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "allDay"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->TABLE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Landroid/database/Cursor;)Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->id:J

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->title:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->startTime:J

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->endTime:J

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->isAllDay:Z

    :cond_1
    return-object p0
.end method

.method protected getCalendarActivityLaunchOptions()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "beginTime"

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->startTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->endTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "DetailMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "launch_from_widget"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, -0x1

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->isAllDay:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120a50

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->startTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->endTime:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->isAllDay:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120a50

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->startTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->endTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public resetTimeForDay(JJ)V
    .locals 5

    const-wide/16 v2, -0x1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->isAllDay:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->startTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->endTime:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->isAllDay:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->startTime:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_3

    iput-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->startTime:J

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->endTime:J

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    iput-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->endTime:J

    goto :goto_0
.end method
