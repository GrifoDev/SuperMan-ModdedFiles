.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent$StartTimeComparator;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget-boolean v2, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->isAllDay:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->isAllDay:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->isAllDay:Z

    if-nez v2, :cond_2

    iget-boolean v2, p2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->isAllDay:Z

    if-eqz v2, :cond_2

    return v1

    :cond_1
    return v0

    :cond_2
    iget-wide v2, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    iget-wide v4, p2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    :goto_0
    return v0

    :cond_3
    iget-wide v2, p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    iget-wide v4, p2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->startTime:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;

    check-cast p2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent$StartTimeComparator;->compare(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;)I

    move-result v0

    return v0
.end method
