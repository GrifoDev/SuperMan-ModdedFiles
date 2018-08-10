.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;
.super Landroid/os/AsyncTask;
.source "CalendarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->loadTodayEvents(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
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
        "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

.field final synthetic val$listener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

.field final synthetic val$todayEndTime:J

.field final synthetic val$todayStartTime:J

.field final synthetic val$todayTimezoneStartTime:J


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;JJJLcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    iput-wide p2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$todayStartTime:J

    iput-wide p4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$todayEndTime:J

    iput-wide p6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$todayTimezoneStartTime:J

    iput-object p8, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$listener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$todayStartTime:J

    iget-wide v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$todayEndTime:J

    iget-wide v6, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$todayTimezoneStartTime:J

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap0(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;JJJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v8

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$todayStartTime:J

    iget-wide v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$todayEndTime:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap1(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;JJ)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    move-result-object v9

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    return-object v10

    :cond_0
    invoke-virtual {v0, v8}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->addAll(Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;)V

    invoke-virtual {v0, v9}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->addAll(Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;)V

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get1(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get1(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-set0(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;I)I

    const-string/jumbo v0, "CalendarManager"

    const-string/jumbo v1, "CalendarProvider isn\'t ready yet. Try to reload after 10000ms."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get5(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get7(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get5(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get7(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "CalendarManager"

    const-string/jumbo v1, "We tried to reload calendar data over 10 times but it was failed. Need to check in system side."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$listener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$11;->val$listener:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;->onCompleted(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
