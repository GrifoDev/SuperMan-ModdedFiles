.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;
.super Landroid/os/AsyncTask;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->getEvents(JJJLcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

.field final synthetic val$eventTimeEnd:J

.field final synthetic val$eventTimeStart:J

.field final synthetic val$eventTimeZoneTimeStart:J

.field final synthetic val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;JJJLcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    iput-wide p2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$eventTimeStart:J

    iput-wide p4, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$eventTimeEnd:J

    iput-wide p6, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$eventTimeZoneTimeStart:J

    iput-object p8, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;",
            ">;"
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const-string/jumbo v3, "(((dtstart>= ?) AND (dtstart< ?) AND (allDay= ?) ) OR ( (dtstart= ?) AND (allDay= ?)))"

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$eventTimeStart:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v4, v8

    iget-wide v8, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$eventTimeEnd:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v4, v8

    const-string/jumbo v2, "0"

    const/4 v8, 0x2

    aput-object v2, v4, v8

    iget-wide v8, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$eventTimeZoneTimeStart:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v4, v8

    const-string/jumbo v2, "1"

    const/4 v8, 0x4

    aput-object v2, v4, v8

    iget-wide v8, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$eventTimeStart:J

    cmp-long v2, v8, v10

    if-nez v2, :cond_0

    iget-wide v8, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$eventTimeEnd:J

    cmp-long v2, v8, v10

    if-nez v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    const-string/jumbo v2, "content://com.android.calendar/events"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->-get0(Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    sget-object v2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager;->EVENT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    return-object v5

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;

    invoke-direct {v2, v6}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    new-instance v2, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent$StartTimeComparator;

    invoke-direct {v2}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent$StartTimeComparator;-><init>()V

    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$2;->val$listener:Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;->onCompleted(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
